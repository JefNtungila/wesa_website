# **Classifying Transactions: A Comparison of Traditional Machine Learning for NLP vs ChatGPT API**

---
```
 
```
**Tags:**
- GenAI
- LLM
- NLP

```
 
```
**Excerpt:** I classified my transactions over the years using a rule-based approach, then traditional NLP and finally with GenAI. I compare and contrast methodologies.
```
 
```

```
 
```
## **Background**


I love to analyse all my transactions on an annual basis. I find that it gives insight into my spending habits. It sheds light on behaviour I otherwise would have not noticed. I find it particularly insightful to analyse my transactions per category. This permits answering questions such as how much did I spend on food in the previous year or how much did I spend on transportation in the previous year across all my bank accounts. 

I commenced this project in 2020 using a rule based approach, and then evolved the project to use a machine learning approach in 2021. This was because the rule based approach did not generalise well to unseen data. A transaction would not be classified if money was spent at a new vendor. This would be resolved using machine learning. I further evolved the project a third time to integrate the ChatGPT API in 2024. This was because I liked the idea of not continuously having to manually label the training data of the transactions. 


The aim of this project was to have a functional tool for my own recreational purposes. This informed the decision-making in tools and the accuracy I used across the project.  I categorised my transactions within the following categories:  Food, Transportation, Income, Medical & Healthcare, Shopping, Funds Transfer, and  the catch all ‘Personal Spending’ for all other transactions.

I tried finding a Python library to automatically categorise my transactions. I was unable to find anything suitable out there. This was due to the highly personalised and localised nature of transactions. So I set out to build my own solution.

I quickly realised that categorising transactions (read classifying transactions) is a natural language problem due to the uniqueness of the transactions. For instance, there's more information about the nature of transactions in the words 'Delhaize' or ‘Tesco’ or ‘Walmart’  than in '£65.34'. So I first built out a tool using traditional ML tools. I then improved on it, by using the ChatGPT API.

```
 
```
## **Methodology**

Manually categorising all my transactions did not seem appealing. An automated process would mean I could reuse the tool for the following years with my new transactions.  In both the traditional machine learning approach and the ChatGPT API approach, I was aiming for 85% accuracy on classifying the data. 

My inspiration for this endeavor was Elon Musk's vision of the future of design technology. I aimed to create a low-cost version of his visionary concept.
```
 
```
### **Traditional Machine Learning (extreme gradient boosting decision tree) for NLP**

I have previously worked on multiple extensive NLP projects, and so I have built up my preferences when it comes to my textual analysis methodology. 

When building a model to classify text from scratch, I find that I achieve state-of-the-art results by preprocessing my training and testing data into a sparse count vectorised matrix. That is a matrix where all words observed, across all sentences, represent their own variable/column. Each sentence, a collection of words, is then treated as an observation or a row. I.e. if a word is that sentence, this is denoted by a 1 for that variable; if not, then 0. I then manually label a minority of the data into their respective categories.

In order to automate the majority of the categorising process, I still needed a labelled dataset. I aimed to label the smallest amount of data and still have good results. The algorithm would then be trained on this dataset. As with every categorising project, it is important that the training data is clean.

I trained my favourite model extreme gradient boosted decision tree on a sparse vectorised matrix of the textual descriptions of 200 of my 2021-2022 transactions. Then I predicted the category of the remaining 700 transactions. It had an accuracy of 88% (balanced classes).

```
 
```
### **Categorising transactions using the ChatGPT API**

Setting up the ChatGPT API was relatively straightforward. I generated an API key and then topped up my account with €10. The API was ready to go at this point.

The ChatGPT API is just a programmatic version of ChatGPT. That is, a prompt is sent from a program to ChatGPT, and then  ChatGPT returns an answer to that prompt. The benefit of using the API is that it can be automated and hence can be run in different programs over a longer span of time. 

Given that the API is just a programmatic version of ChatGPT, I decided to experiment with finding the appropriate prompt using the online web client version of ChatGPT. This would result in cost savings until a sufficient good prompt would be found.

I originally used the labels from my 2021-2022 training-testing dataset. But I found that constraining ChatGPT to the original labels led to imperfect results. It is a very smart tool. It thought that some of the transactions did not fit into the provided categories. So I used an interactive approach to find the best prompt and best labels/categories. Using the ChatGPT web client, I found that I obtained an accuracy of 87%. ChatGPT had a similar performance evaluation as my own custom algorithm, but generalised better to unseen data. 

I admit, I haughty thought that not much ‘engineering’ was involved in ‘prompting’. I was wrong. I love how datacamp.com defines ‘prompt engineering’. ‘At its heart, prompt engineering is akin to teaching a child through questions. Just as a well-phrased question can guide a child's thought process, a well-crafted prompt can steer an AI model, especially a Large Language Model (LLM), towards a specific output.’ 

It is very important to give ChatGPT good prompts, or it feels comfortable generating appropriate but different labels than in the provided training data. I managed to resolve this using an interactive approach. I attempted various prompts until I obtained consistent results.

A good prompt needs to contain clear action. Working with LLM’s is still interacting with a computer program. It is advisable to define the output format of the prompt in order to constrain ChatGPT. I asked it to produce a python list, which I could easily convert to series and use in Pandas or NumPy. This was the most cost-effective approach in terms of time and money.

I found that the output length of the input list containing the descriptions of the transactions and the output length of the list containing the categories of the transactions were different. I could not find a prompt that ensured consistent input and output length. 

I was hence forced to use an iterative prompting approach, i.e. query the ChatGPT API for every transaction description.  I built an anonymous function that would read a description in and prompt ChatGPT. This greatly increased computing time and computing cost, but also accuracy. 

 The prompt I finally settled on was: 

‘Categorise the following transactions within the following categories:  Food, Transportation, Income, Medical & Healthcare, Shopping, Funds Transfer, and  the catch-all ‘Personal Spending’ for all other transactions. Pay extra attention to the merchants mentioned in the description to make your choice e.g. ‘AMZNMktplace’ would be categorised as shopping, ‘three dot co do uk’ as ‘Personal Spending’ because it is telecommunications and ‘Thai Wok’ would be categorised as ‘Food’ given that ‘Thai wok’ most likely sells Thai food. Do not categorise a transaction based on the location indicated in the description. The location indicates where the transaction happened and not that a mode of transportation was used.’

```
 
```
## **Findings**

Building an automated labelling tool from scratch had its own challenges. A challenge I encountered was for instance the situation where a vendor sold items belonging to different categories. The program would not know to which category a transaction belonged based on the same transaction description. 

Data drift due to changing lifestyles, and hence different transactions was expected. I originally built the script using English transaction data from 2021-2022. One of my financial providers changed the manner of how they provided the CSVs of the transactions. They also changed the language in which the transaction descriptions were provided. 

My custom machine learning model could not handle changes in language input. In a very interesting turn of events, ChatGPT was resistant to severe data drift and generalised better to unseen data. 

During testing, I found that ChatGPT wrongly classified 7 from 52 transactions with the provided prompt.  It would see location names in transactions and classify it as transportation I found that location name was often provided in transactions to indicate where the transaction happened. E.g ‘Foodshop in London’ would be classified as transportation. Preprocessing the data resolved this issue. With an accuracy of 87%, ChatGPT had the same performance evaluation as my custom machine learning model, but performed significantly better on unseen data.


I then applied the ChatGPT API to the 2023-2024 data that consisted of a total of 1380 transactions. I had to query the API for each individual transaction. Sending and receiving all those tokens cost me 25 cent on the 8-march-2024. I personally found that very competitive pricing compared to the experience I had querying the Google Cloud API for my data science master thesis.


