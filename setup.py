from setuptools import setup, find_packages

setup(
    name="mechbot9000",
    version="0.1",
    packages=find_packages(),
    install_requires=open("requirements.txt").read().splitlines(),
    entry_points={
        'console_scripts': [
            'mechbot=mechmind.core.cli:main',
        ],
    },
)
