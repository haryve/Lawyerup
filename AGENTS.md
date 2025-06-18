# CareMeez AGENTS.md (Enterprise Edition)

## 🎯 Purpose
This document defines the agent architecture for **CareMeez Enterprise**, a modular AI-first healthcare platform. It describes a multi-agent system optimized for speed, safety, patient triage, RAG-based inference, and intelligent routing — scalable across India and globally.

CareMeez agents are designed to be **self-improving**, continuously learning from data, feedback, and interactions to optimize performance and accuracy. The goal is to become the **most intelligent, responsive, and safe healthcare AI system** available.

---

## 🧠 Agent Architecture Overview

| Agent ID                 | Role Description                                                                 | Cloud Function                    | Firestore Trigger / Collection        |
|--------------------------|----------------------------------------------------------------------------------|-----------------------------------|----------------------------------------|
| `chatAgent`              | Primary conversational AI, supports memory, summarization, and multilingual chat | `caremeezAIStreamResponder`       | `chats/{chatId}/messages/{messageId}` |
| `aichat1Agent`           | Stateless GPT-4 interaction agent                                                | `aichat1StreamResponder`          | `aichat1/{messageId}`                  |
| `triageAgent`            | Intelligent symptom routing → specialization → doctor assignment                | `triageSymptomsAI`                | `triageRequests/{requestId}`           |
| `smartPrescriptionAgent`| Generates structured prescriptions using patient history + input prompts        | `generateSmartPrescription`       | `prescriptions/{prescriptionId}`       |
| `imageDiagnosisAgent`    | Accepts images, classifies type, and queues for diagnosis pipeline              | `imageDiagnosisRouter`            | `imageUploads/{imageId}`               |
| `ocrAgent`               | OCR + NLP extraction for medical documents, labs, and prescriptions             | `documentOCRExtractor`            | `documents/{docId}`                    |
| `intakeClassifierAgent`  | Flags urgent or high-risk intake forms                                          | `intakeFormClassifier`            | `intakeForms/{formId}`                 |
| `sentimentAgent`         | Performs NLP sentiment + tone scoring on feedback                               | `feedbackSentimentAnalyzer`       | `feedback/{feedbackId}`                |
| `reputationAgent`        | Scores doctors based on consult quality, time, feedback, and outcomes           | `reputationScoringEngine`         | `consults/{consultId}`                 |
| `availabilityAgent`      | Updates real-time doctor availability                                           | `doctorAvailabilityScheduler`     | `availability/{doctorId}`              |
| `routerAgent`            | Assigns users to doctors based on triage, reviews, availability                 | `autoAssignDoctor`                | `routing/{requestId}`                  |
| `reminderAgent`          | Sends personalized reminders via SMS, email, or push                            | `appointmentReminder`             | Scheduled                              |
| `tipAgent`               | Delivers daily wellness or medical tips to users                               | `healthTipBroadcaster`            | Scheduled                              |
| `escalationAgent`        | Detects emergency or unresponsive conditions, alerts on-call team               | `emergencySignalMonitor`          | `emergencies/{eventId}`                |
| `callbackAgent`          | Logs missed calls and auto-generates follow-ups                                 | `missedCallCallbackHandler`       | `missedCalls/{callId}`                 |

---

## 🔁 Agent Lifecycle

1. **Triggering**
   - Event-driven (Firestore, Pub/Sub, file upload)
   - Direct HTTP invocation
   - Scheduler-based (cron)

2. **Execution Flow**
   - Load structured memory (if applicable)
   - Run inference: GPT-4, RAG, classifier, or toolchain
   - Log inputs + inference data for retraining
   - Store results + status update to Firestore

3. **Post-processing**
   - Run feedback hook / callback to downstream agent
   - Self-score results based on latency, success, feedback
   - Trigger self-evaluation or correction if confidence low
   - Log performance, tokens, duration

---

## 🔌 Agent Communication Patterns

- 🔄 **Shared Memory**: via Firestore subcollections (`sessions/{id}/messages`)
- 🧠 **RAG-enabled agents** pull from medical corpus in Firestore or GCS
- 🕸️ **Routing/coordination** handled by `routerAgent` or `plannerAgent`
- 💬 **Streamed Chat**: all chat agents use OpenAI streaming with intermediate `response1` updates
- 🔗 **Downstream triggers** activate based on status changes or `flags`
- 📊 **AutoEval Metrics**: logged per agent for accuracy, safety, and response time

---

## 🛡️ Security & Compliance

- All agents must:
  - Log all outputs + timestamps
  - Flag unsafe/ambiguous results (score < threshold)
  - Obey role-based access control (RBAC) at Firestore level
- Sensitive decisions (e.g. triage, diagnosis) must be **double validated**:
  - By secondary AI agent
  - Or by human-in-loop doctor when flagged
- Logs are anonymized and retained for AI model retraining

---

## 📅 Agent Automation Schedule

| Agent ID              | Frequency       | Method     |
|-----------------------|-----------------|------------|
| `reminderAgent`       | Every 1 hr      | Pub/Sub    |
| `tipAgent`            | Daily at 8 AM   | Pub/Sub    |
| `reputationAgent`     | Nightly         | Scheduler  |
| `availabilityAgent`   | Real-time + Cron| Firestore + Cron |

---

## 🔧 Developer Checklist for New Agent

1. Create `function-name.js`
2. Add to `index.js`
3. Write test Firestore event or mock
4. Add field: `status`, `response1`, `error`
5. Update AGENTS.md
6. Add to monitoring dashboard (if critical)
7. Register in self-evaluation pipeline (optional)

---

## 🧠 Prompt Engineering Guidelines

- Always define system context at top:
```json
{"role": "system", "content": "You are a medical assistant for CareMeez..."}
```
- Use few-shot examples for structured output (JSON if possible)
- Limit prompts to ≤ 4K tokens. Truncate older memory if needed
- Store top-performing prompts for agent training

---

## 📌 Naming & Logs
- Function name = `agentName.js`
- Result must be stored in Firestore with fields:
  - `status`: "success", "error", "in_progress"
  - `response1`: streamed or final result
  - `error`: detailed if failed
- Log `confidenceScore`, `model`, and `durationMs` per call

---

## 🚀 Future AI Upgrades (Planned)

| Feature              | Description                                             |
|----------------------|---------------------------------------------------------|
| Agent-to-Agent Memory| Agents read each other’s summaries via Firestore memory |
| AutoEval Agent       | Self-evaluates AI outputs for hallucination or bias     |
| Fine-tuned Triage AI | Domain-trained classification model via Vertex AI       |
| Multi-model Kernel   | Switch between GPT, Claude, LLaMA based on prompt type  |
| FeedbackLoop Engine  | Routes real-world feedback into model/agent improvement |
| SkillChain Orchestration | Dynamically assemble multi-agent workflows           |

---

## 📌 Versioning
- Document version: 2.1
- Last updated: 2025-06-19
- Maintainer: Harvesh Kumar

---

CareMeez AI Agents are designed to **continuously evolve**, optimizing accuracy, safety, and experience. Their purpose is to deliver **best-in-class AI healthcare**, guided by real-world feedback and intelligent self-evaluation.

Every function is built not just to serve — but to learn, adapt, and improve.

_“CareMeez will not stop at being great. It strives to be the best.”_
