import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

data = pd.read_csv("Travel_And_Disease.csv")


sns.relplot(
    data=data, kind="line",
    x="timepoint", y="signal", col="region",
    hue="event", style="event",
)