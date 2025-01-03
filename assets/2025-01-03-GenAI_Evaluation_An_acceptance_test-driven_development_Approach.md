# GenAI Evaluation: An Acceptance Test-Driven Development Approach

---

```

```
**Tags:**
- GenAI Evaluation
- Acceptance Test-Driven Development 

```

```

**Excerpt:** I detail the evaluation of GenAI models used for post-call summaries and customer service agent assistance. It is based on the work I performed as a Data Science QA at a client.

```

```

```

``` 

I used an acceptance test-driven development (ATDD) approach, employing a "diamond" testing structure, ensuring alignment with business needs.  The evaluation included manual and automated tests across various levels, from unit tests across integration tests to end-to-end tests.  Key metrics focused on operationality, relevance, veracity, accuracy, lexical and semantic correctness.  Two use cases are presented here, with specific evaluation questions and methodologies for each.


Two use cases for GenAI models were evaluated: producing post-call summaries and providing recommendations to customer service agents. Some challenges observed with GenAI include financial and reputational risks from malfunctioning GenAI, the difficulty of reproducing errors due to non-deterministic behavior, and debugging complexities in multi-component systems. 

It is important to align GenAI with business goals through customer operations.  I advocate for an Acceptance Test Driven Development (ATDD) approach involving collaboration with business stakeholders to validate AI output and define product requirements.  

This approach involves translating product definitions into business requirements and then into test cases, which are automated using Playwright.  The test cases assess the operationality, relevance, veracity, and accuracy of the outputs.  Reusing known frameworks ensures ease of recognition for stakeholders. E.g. re-using for GenAI applications (parts of) an existing evaluation framework that were used to validate previous non-Gen-AI applications.

Shifting from a pyramidal testing structure to a diamond approach for Acceptance Test Driven Development is advantageous.   This approach facilitates better alignment with customer operations and is better suited to agile environments. A pyramidal approach commences with unit tests, then component tests, then integration tests, then manual end-to-end tests. This would work better in a waterfall environment. A diamond approach will put the emphasis on integration tests, whilst simultaneously and iteratively performing end-to-end tests and unit tests. Its iterative nature makes it better suited to agile environments.

One of the use cases for a tailored E2E evaluation strategy was the generation of post call summaries. The input is a call transcript, and the output is a call summary. A test suite of evaluation questions were created. The evaluation questions focus on the information contained in the summary, its helpfulness for recall, and the quality of descriptives such as dates, numbers, and locations.  A rule-based E2E evaluation methodology is employed, verifying language, format, and lexical and semantic relevance of the summary to the transcript. 

Another use case is the evaluation of RAG (Retrieval Augmented Generation).  RAG combines user questions with labelled data and real-time information to generate specific answers with source links, in contrast to traditional chatbots that use generic rule-based answers.  RAG offers benefits such as enhanced contextual understanding, improved response coherence, and augmented accountability.  The input for this use case is the user utterance, and the output is the AI response.

I propose an evaluation process of RAG utilising a golden dataset.  The first step is identifying similar utterances in the golden dataset to determine intent recognition and context retrieval.  Given the identified utterance and intent, the second step assesses whether the produced response aligns with the golden dataset's response and if the correct answer was generated. The evaluation questions assess the content retrieved by the AI, its tonality, response format, and framing (customer-centric or agent-centric).

This qualitative approach can be translated to a programmatic metric-based quantitative approach. Metrics such as context precision, context faithfulness, answer relevance, and answer similarity, each scored from 0 to 1, evaluate the AI's performance. 

Using the user utterance: ‘Is the Eiffel tower in Paris?’ as an example, Context precision measures if the AI retrieves relevant passages about the Eiffel Tower and Paris.  Context faithfulness assesses if the response aligns with the retrieved answer. E.g. If the knowledge base states that the Eiffel tower is in Paris, but the AI response states that the Eiffel Tower is in Brussels, a zero-score will be given for context faithfulness.   Answer relevance evaluates the relevance of the generated response to the utterance.  Answer similarity examines the meaningfulness and semantic correctness of the response E.g. Paris is in Eiffel tower is lexically correct, but will get a semantic zero-score because the meaning is not correct.

 ```



