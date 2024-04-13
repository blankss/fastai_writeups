## Questionaire
1. Provide an example of where the bear classification model might work poorly in production, due to structural or style differences in the training data.
    - Since the bear classification model we made was most likely trained on professional photos, during production, the model might do poorly when users upload images that are not clear such as images shot on trail cams. Also, when looking at a batch, it seems that most of the images grabbed were shot during the day, so if the user uploaded a picture of a bear at night, the model might have a hard time identifiying it.
2. Where do text models currently have a major deficiency?
    - Generating correct responses not good (might even be confident and wrong)
3. What are possible negative societal implications of text generation models?
    - Social media bots can abuse this to flood platforms with misinformation. Ethics.
4. In situations where a model might make mistakes, and those mistakes could be harmful, what is a good alternative to automating a process?
    - You can use another model to detect whether or not the text is artificially generated. If it is, can put disclaimer; however, generally, text generation will always be technologically a bit ahead of models that recognize automatically generated text.
    - Another way would just to be reviewed/peer-reviewed by human experts.
5. What kind of tabular data is deep learning particularly good at?
    - Natural language or high cardinality categorical columns (large number of discrete choices)
6. What's a key downside of directly using a deep learning model for recommendation systems?
    - The model usually gives information on what the user LIKES and does not think about the usefulness of the product
    - EX: recommending books from same author that user liked isn't extremely helpful in introducing new products that the user might like
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
    - Done through ```minimal``` in lecture 2 video and chapter 2 of the book.
10. What is DataLoaders?
    - DataLoaders is a class that stores whatever DataLoader objects you pass to it and makes them available to train and valid.
    - Class that passes data to the fastai model -> stores required DataLoader objects (usually for train and validation sets)
11. What four things do we need to tell fastai to create DataLoaders?
    - What kinds of data we are working with
    - How to get list of items
    - How to label these items
    - How to create the validation set
12. What does the splitter parameter to DataBlock do?
    - The splitter parameter decides how to split the data into the validation set. You can also pass in a seed so the program knows to use the same random set of data for the validation set every time.
13. How do we ensure a random split always gives the same validation set?
    - Set a seed, can be any number. You then need to use that number everytime you want the same validation set.
14. What letters are often used to signify the independent and dependent variables?
    - x for independent and y for dependent
15. What's the difference between the crop, pad, and squish resize approaches? When might you choose one over the others?
    - Crop: crops the image to the desired size that you pass in for the DataBlock, might cut out important details though. (default)
    - Pad: pads the image with 0's (black)
        - If we pad, we just waste computation for our model since it's just empty space
    - Squish: squishes the original size to the fixed size through stretching or squishing
        - leads to model learning unrealistic shapes of data
    - Which method depends on underlying problem and dataset, but a better method is the RandomResizedCrop as each epoch we crop on a randomly selected region of the image which is good as the model will focus on different parts of the image and will learn accordingly
16. What is data augmentation? Why is it needed?
    - Data augmentation is a process of artificially increasing the number of data we can use to train by transforming original pictures either by stretching, cropping, saturating, etc.
17. What is the difference between item_tfms and batch_tfms?
    - item: refers to one piece of data (ex: image)
    - batch: refers to multiple images (a batch of items) GPU
    - both of these usually used to change 1+ image(s)
18. What is a confusion matrix?
    - A confusion matrix maps out the Actual on the y-axis, predicted on the x-axis, and the plots are filled with the actual vs predicted information. This way, we can easily see where our model gets the most confused on which type of bear they are identifying.
19. What does export save?
    - Export saves both the model's architecture and the trained parameters. The exported model that you use in applications is called an inference since you are using it only for predictions instead of training.
    - Also saves how the DataLoaders are defined
20. What is it called when we use a model for getting predictions, instead of training?
    - Inference
21. What are IPython widgets?
    - GUI components that combine JS and Python functionality in a web browswer.
22. When might you want to use CPU for deployment? When might GPU be better?
    - GPUs are better at doing lots of identical work in parallel (processing multiple images/pieces of data at once)
        - Numerous tasks simultaneously
    - CPUs are more cost-effective if you are analyzing one at a time
        - Single task simultaneously
23. What are the downsides of deploying your app to a server, instead of to a client (or edge) device such as a phone or PC?
    - Application will require a network econnection which may have some latency each time the model is called.
    - Sensitive data needs to be considered.
    - However, deploying to server makes it easier to iterate and roll out new versions of a new model.
    Scaling and overhead of many users.
24. What are three examples of problems that could occur when rolling out a bear warning system in practice?
    - Trained data vs. actual data in practice
    - Quality of data in practice
    - External factors (time of day, weather, etc.)
    - Might be too slow
25. What is "out-of-domain data"?
    - Data that our model sees in product very different to training
26. What is "domain shift"?
    - The type of data model sees changes over time
27. What are the three steps in the deployment process?
    - Manual Process: model run in parallel and not directly driving any actions. Humans still check model outputs.
    - Limited Scope Deployment: model's scope is limited and carefully supervised.
    - Gradual Expansion: model scope gradually increased. Good reporting systems needed to be implemented in order to check output. 
        - Need to consider what could go wrong, might still need human review to make sure output is accurate but much less than first step

Fun Python Program: create a program that automatically creates the numbered list of question in the md, this was done manually and I did not like that