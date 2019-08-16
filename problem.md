Need to basically keep an estimate of what regions each robot should be assigned to explore for the remainder of the scenario. This region updates and shrinks as the patches become observed, and as the current observations yield more insights about the remaining distribution of unobserved patches, given bayesian priors about what those distributions are before observations.

### Exploration / Exploitation trade off

Each move should be considered in terms of its direct cost, and the estimate of how completing that move affects the cost of exploring the rest of the environment. This cost can be affected through two mechanisms:

* Directly reducing the amount of remaining work, because part of the observation task has been completed (exploitation)
* Making the remaining task easier by improving information about the space, allowing for more reliable planning for the rest of the task (exploration)

As a note, it is also possible to make moves that **increase** the remaining cost of a task. For example, moving back inside a thoroughly explored region when you are already inside the remaining space to be explored. These increases have more to do with exploitation than exploration, since making moves can't lose you any information.

### Titles
* Experience driven sampling techniques for multi-robot mapping tasks