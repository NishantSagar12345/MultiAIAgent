from setuptools import setup,find_packages
with open("requirements.txt") as r:
    requirements=r.read().splitlines()
setup(
    name="MULTI-AI AGENT",
    version="0.1",
    author="Nishant",
    packages=find_packages(),
    install_requires=requirements
)    