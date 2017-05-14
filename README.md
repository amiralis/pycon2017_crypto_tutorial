# Applied Modern Cryptography in Python (PyCon 2017)

[Amirali Sanatinia](http://www.ccs.neu.edu/home/amirali)

Today we use cryptography in almost everywhere. From surfing the web over https, to working remotely over ssh. Although most developers don't need to implement cryptography primitives, the knowledge and understanding of these building block allows them to better deploy them in their application. In modern crypto we have all the building block to develop secure application. However, we see instances of insecure code everywhere. Most of these vulnerabilities are not because of theoretic shortcomings, but due to bad implementation or a flawed protocol design. Cryptography is a delicate art where nuances matter, and failure to comprehend the subtleties of these building blocks leads to critical vulnerabilities. To add insult to injury most of the resources available are either outdated or wrong, and inarguably, using bad crypto more dangerous than not using it.


## Requirements

 * Python 3
 * [Jupyter Notebook](http://jupyter.org/)
 * [cryptography](http://cryptography.io/)


## Setup Instructions
You need to have [pip](https://packaging.python.org/) installed. Optinally you can use [virtualenv](https://packaging.python.org/installing/#creating-virtual-environments) for an isolated installation of libraries instead of globally.

```bash
  $ pip3 install jupyter
  $ pip3 install cryptography
```

Alternatively, if you have the conda package manager, you can run:

```bash
$ conda create -n crypto python=3.6 jupyter cryptography
$ source activate crypto
$ jupyter notebook  
```
