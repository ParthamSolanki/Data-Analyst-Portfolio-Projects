Due to the limitation of github for not allowing single files larger than 100 mb I am unable to attach the original dataset that I used for the project.

The notebook file itself contains all the results and visualization from my conducting of the project.

If you still want to give it a try, I am attaching a compression version of a sample data set that I extracted from the original dataset using

``` Python
import pandas as pd

df = pd.read_csv("Fraud.csv")

sample_df = df.sample(n=1000000, random_state=42)

sample_df.to_csv("transactions_sample.csv", index=False)
```

Original dataset - [Link](https://kaggle.com/datasets/80df22c3023710dc8ac9294e60be8161b30893892fdae10598dc427694c7d079)