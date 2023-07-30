 # [parts](https://brickarchitect.com/most-common-lego-parts/)

The parts you can choose are below. There are only two options for each component so we avoid the [fallacy of choice](https://leanlogic.online/glossary/choice/). There's a Large version and a Small version. Specifics can be gathered later.

1. ![3004](./img/3004.png) 
  * A large piece of Business logic
2. ![3004](./img/3005.png) 
  * A piece of Business Logic
3. ![3004](./img/3020.png) 
  * the Large Language model
4. ![3004](./img/3022.png) 
  * The Language Model
5. ![3004](./img/2417.png) 
  * The Large Front End - User interface
6. ![3004](./img/2423.png) 
  * The Basic Front End - User interface
7. ![3004](./img/87087.png) 
  * The Basic API - User interface
8. ![3004](./img/99780.png) 
  * The Large API - User interface
## [the architecture]()

The architecture options will become obvious with the scope/requirements and business problem(s) you're trying to solve.

[template](./.github/FEATURE_TEMPLATE.md)

### small local version - website - multi shot
2. ![3004](./img/3005.png) 
  * A piece of Business Logic
4. ![3004](./img/3022.png) 
  * The Language Model
6. ![3004](./img/2423.png) 
  * The Basic Front End - User interface

### large remote version - website - zero shot
1. ![3004](./img/3004.png) 
  * A large piece of Business logic
3. ![3004](./img/3020.png) 
  * the Large Language model
5. ![3004](./img/2417.png) 
  * The Large Front End - User interface

### small local version - api - multi shot
2. ![3004](./img/3005.png) 
  * A piece of Business Logic
4. ![3004](./img/3022.png) 
  * The Language Model
7. ![3004](./img/87087.png) 
  * The Basic API - User interface

### large remote version - api - zero shot
1. ![3004](./img/3004.png) 
  * A large piece of Business logic
4. ![3004](./img/3022.png) 
  * The Language Model
8. ![3004](./img/99780.png) 
  * The Large API - User interface


## [llm training](https://www.coursera.org/learn/generative-ai-with-llms/lecture/gZArr/computational-challenges-of-training-llms)
moving from a general LLM to a specific use case requires training
a small set of data and 
a large set of compute
### [models memory anatomy](https://huggingface.co/docs/transformers/v4.20.1/en/perf_train_gpu_one#anatomy-of-models-memory)

. The components on GPU memory are the following: 
1. model weights
2. optimizer states
3. gradients
4. forward activations saved for gradient computation
5. temporary buffers
6. functionality-specific memory

#### Back of the envelope calcululation

##### Weights
* 1 parameter = 4 bytes (32-bit float)
* 1B parameters = 4 * 10^9 bytes = 4GB
##### Adam optimizer (2-states)
* +8 bytes per parameter
##### Gradients
* +4 bytes per parameter
##### Activations and temp memory (variable size)
* +8 bytes per parameter (high-end estimate)

#### Total = 4 bytes per parameter +20 extra bytes per parameter

