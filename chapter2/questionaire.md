## Questionaire
1. Provide an example of where the bear classification model might work poorly in production, due to structural or style differences in the training data.
    - Since the bear classification model we made was most likely trained on professional photos, during production, the model might do poorly when users upload images that are not clear such as images shot on trail cams. Also, when looking at a batch, it seems that most of the images grabbed were shot during the day, so if the user uploaded a picture of a bear at night, the model might have a hard time identifiying it.
2. Where do text models currently have a major deficiency?
    - 
3. What are possible negative societal implications of text generation models?
    - Social media bots can abuse this to flood platforms with misinformation. Ethics.
4. In situations where a model might make mistakes, and those mistakes could be harmful, what is a good alternative to automating a process?
    - 
5. What kind of tabular data is deep learning particularly good at?
    - Time series and recommendation systems
6. What's a key downside of directly using a deep learning model for recommendation systems?
    - The model usually gives information on what the user LIKES and does not think about the usefulness of the product
7. What are the steps of the Drivetrain Approach?
    - Define the Objective
    - Levers what inputs can we control (hyper parameters)
    - Data (what data we can collect: images, text, etc.)
    - models (how the levers influence the objective)
8. How do the steps of the Drivetrain Approach map to a recommendation system?
    - Objective: drive additional sales by surprising and delighting customers with recommendations of items they would not have purchased without the rec
    - Levers: ranking of the recommendations
    - Data: new data must be collected to generate recommendations that will cause sales
        - Needs many randomized experiments to collect data about wide range of recommendations from wide range of customers
    - Models: 2 of them
        - Conditional on seeing or not seeing a rec
        - The difference between these two probabilities is a utility function for a given recomendation to a customer
        - Low in cases where algo recommends a familiar book that customer has already rejected 
9. Create an image recognition model using data you curate, and deploy it on the web.
10. What is DataLoaders?
11. What four things do we need to tell fastai to create DataLoaders?
12. What does the splitter parameter to DataBlock do?
13. How do we ensure a random split always gives the same validation set?
14. What letters are often used to signify the independent and dependent variables?
15. What's the difference between the crop, pad, and squish resize approaches? When might you choose one over the others?
16. What is data augmentation? Why is it needed?
17. What is the difference between item_tfms and batch_tfms?
18. What is a confusion matrix?
19. What does export save?
20. What is it called when we use a model for getting predictions, instead of training?
21. What are IPython widgets?
22. When might you want to use CPU for deployment? When might GPU be better?
23. What are the downsides of deploying your app to a server, instead of to a client (or edge) device such as a phone or PC?
24. What are three examples of problems that could occur when rolling out a bear warning system in practice?
25. What is "out-of-domain data"?
26. What is "domain shift"?
27. What are the three steps in the deployment process?

Fun Python Program: create a program that automatically creates the numbered list of question in the md, this was done manually and I did not like that