<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>5.3 Computing Bias Lesson</title>
</head>

<body>

  <header>
    <h1>5.3 Computing Bias Lesson</h1>
    <p>Computing Bias Lesson</p>
  </header>

  <section>
    <h2>Computing Bias - Hanlun</h2>
    <p><strong>What is it?</strong></p>
    <ul>
      <li>Computing bias is a bias that exists within algorithms that unfairly discriminate against certain individuals or groups, creating unfair outcomes.</li>
      <li>Computing innovations reflect biases because algorithms and data are influenced by the people who contributed to it, so computing biases can be embedded at every level of development.</li>
      <li>Algorithm bias should be reduced so computer innovations can combat existing user bias.</li>
    </ul>
    <img src="https://www.researchgate.net/publication/355271705/figure/fig1/AS:1081559734059030@1634875343622/Illustration-of-different-sources-of-bias-in-training-machine-learning-algorithms.jpg" alt="Illustration of different sources of bias in training machine learning algorithms">
  </section>

  <section>
    <h2>Popcorn Hack #1:</h2>
    <p>Which of the following scenarios is an example of computing bias?</p>
    <ol>
      <li>An email filtering system accurately categorizes emails into spam and non-spam based on a diverse set of features, minimizing false positives and false negatives.</li>
      <li>A navigation app provides real-time traffic updates and alternate routes to users, considering various factors such as traffic volume, road closures, and weather conditions.</li>
      <li>An image recognition algorithm identifies objects in photographs with high accuracy, regardless of the gender, ethnicity, or age of the individuals depicted.</li>
      <li>An automated hiring system consistently favors candidates from specific educational institutions and backgrounds, resulting in the exclusion of qualified applicants from diverse backgrounds.</li>
    </ol>
    <p><strong>Correct answer:</strong> D is the correct answer as the system is biased towards candidates from specific educational institutions.</p>
  </section>

  <section>
    <h2>Types of Computing Bias - Trevor</h2>
    <p>Computing bias can be either intentional or unintentional and as said before, this bias is a result of human biases in development. Here are some examples:</p>
    <ul>
      <li>Data bias: when the data set does not reflect the real-world values
        <ul>
          <li>Ex: A company is developing an algorithm to see whether or not a product has positive or negative online reviews. However, the training data might over-represent overly negative or positive opinions that are posted online which wouldn’t reflect the real-world popularity of the product
            <img src="https://www.wallstreetmojo.com/wp-content/uploads/2023/05/Data-Bias-Meaning.png" alt="Data Bias Meaning">
          </li>
        </ul>
      </li>
      <li>Human bias: People who make the programs may bring in their own biases whether consciously or unconsciously
        <ul>
          <li>Ex: A software development team is working on a code review algorithm. They all have experience using Language X and so they believe that developers using Language X are more qualified and so their algorithm reflects that. This uses their individual traits and applies it to the entire group of coders using Language X.
            <img src="https://andipeng.com/publication/what-you-see-is-what-you-get-the-impact-of-representation-criteria-on-human-bias-in-hiring/featured.png" style="width:800px;height:500px" alt="Impact of representation criteria on human bias in hiring">
          </li>
        </ul>
      </li>
      <li>Algorithmic bias reflects the data bias and human bias and often amplifies it. However, bias can arise from the structure and decision making of the program itself
        <ul>
          <li>Ex: A program is designed to automate the loan approval system. It uses information from income, employment history, and credit score. However, the algorithm can produce biased results based on trends from certain job occupations which may disproportionately affect certain groups
          </li>
        </ul>
        <img src="https://vitalflux.com/wp-content/uploads/2018/11/Machine-learning-models-Bias-mitigation-strategies-1024x542.png" alt="Machine learning models Bias mitigation strategies">
      </li>
    </ul>
    <p>There are many more nuanced types of computing biases which you can find <a href="https://developers.google.com/machine-learning/crash-course/fairness/types-of-bias">here</a>.</p>
  </section>

  <section>
    <h2>Popcorn Hack #2:</h2>
    <p>An online example of computing bias is when an HP computer’s facial recognition system couldn’t track the face of someone with darker skin. Why is this and what type of bias is it? Do you think it was intentional or unintentional?</p>
    <p>This is human bias and most likely was unintentional due to the people who designed the HP computer's mainly being light-skinned.</p>
  </section>

  <section>
    <h2>Explicit and Implicit Data - Lakshanya</h2>
    <ul>
      <li>Explicit data is information you give an app or site</li>
      <li>Implicit data is the information it collects based on your activity</li>
      <li>For example, with Netflix, the explicit data it collects includes your rating of movies (thumbs up, thumbs down) and your personal information. The implicit data it collects includes when you watch, what you binge, and the frequently selected genres.</li>
      <li>This data collection is also known as user bias. More bias comes in when Netflix shows its exclusives before any of the regular items to gain subscriptions.
        <img src="https://media.licdn.com/dms/image/C5612AQEhXVSXgpPbjg/article-cover_image-shrink_720_1280/0/1619039092615?e=2147483647&v=beta&t=lCWX45_3Q0ACHa_YkzOuhpjKtY5fFmB57Ssy0prvHdE" alt="Netflix user bias">
      </li>
    </ul>
  </section>

  <section>
    <h2>Popcorn Hack #3:</h2>
    <p>What is another scenario of data collection in everyday applications and situations?</p>
    <p>Another scenario of data collection in everyday applications and situations is...</p>
  </section>

  <section>
    <h2>Mitigation Strategies: - Matthew</h2>
    <ul>
      <li>Obtain more diverse data (ex: racist computer)</li>
      <li>Pre-processing: Writing an algorithm that adjusts datasets to check for bias before using it as an input. It's about cleaning up and organizing the raw data and makes it more suitable for building or training models.</li>
      <li>In-processing: This occurs during the processing or analysis of data within a system or model. The algorithm will manipulate and transform the data as it goes through the model during its active use.(ex: if the algorithm was processing images it would rescale the image to keep consistent dimensions)</li>
    </ul>
  </section>

  <section>
    <h2>More Mitigation Strategies: - Aditya</h2>
    <p>Post-processing: This type of strategy is comprised of 3 parts, input correction, classifier correction, output correction</p>
    <h3>Input Correction:</h3>
    <p>What it is: Imagine you have a machine learning model that identifies objects in images. Input correction involves making adjustments to the images used to test the model after it has already been trained.</p>
    <p>Example: If the model was trained mostly on pictures taken during the day, input correction might involve adjusting the brightness and color balance of images taken at night to make them more comparable.</p>
    <h3>Classifier Correction:</h3>
    <p>What it is: This step focuses on fine-tuning the algorithm or model after training to reduce any biases or discrimination it might have inadvertently learned.</p>
    <p>Example: Suppose you have a model for hiring decisions, and you notice it tends to favor certain demographics. Classifier correction could involve tweaking the decision-making rules to ensure fair treatment for all groups.</p>
    <h3>Output Correction:</h3>
    <p>What it is: After the model makes predictions, output correction involves modifying those predictions to eliminate any biases or unwanted discrimination.</p>
    <p>Example: If a language translation model tends to produce more errors when translating sentences from one language to another, output correction might involve adjusting the final translated sentences to be more accurate and fair.</p>
    <p>In summary, post-processing is like a three-step check and adjustment process to ensure that a machine learning model behaves fairly and accurately, even after it has been trained. Input correction modifies the testing data, classifier correction fine-tunes the model, and output correction adjusts the final predictions. This helps in addressing issues like biases and discrimination that may arise during the model training process.</p>
    <img src="https://vitalflux.com/wp-content/uploads/2018/11/Machine-learning-models-Bias-mitigation-strategies-1024x542.png" alt="Machine learning models Bias mitigation strategies">
  </section>

  <section>
    <h2>Homework:</h2>
    <p>Problem: Biased Predictive Policing Algorithm: A city implements a predictive policing algorithm to allocate law enforcement resources more efficiently. However, concerns arise as community members and activists notice that the algorithm appears to disproportionately target certain neighborhoods, leading to over-policing and potential violations of civil rights. Provide a solution to how this situation can be resolved, and how the computing bias can be removed. Explain which method of mitigation you will use and how it works.</p>
  </section>

</body>

</html>
