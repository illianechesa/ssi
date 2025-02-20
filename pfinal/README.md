
- [Práctica Final: Wfuzz](#pr%c3%a1ctica-final-wfuzz)
  - [Web Fuzzer](#web-fuzzer)
    - [Questions](#questions)
      - [What is Wfuzz?](#what-is-wfuzz)
      - [What can be used for?](#what-can-be-used-for)
      - [What is Fuzzing?](#what-is-fuzzing)
      - [When is a fuzzing tool efective?](#when-is-a-fuzzing-tool-efective)
  - [Presentación](#presentaci%c3%b3n)
- [Wfuzz](#wfuzz)
  - [Programas Utilizados](#programas-utilizados)
  - [Escenarios Montados](#escenarios-montados)
  - [Bibliografía](#bibliograf%c3%ada)

# Práctica Final: Wfuzz

## Web Fuzzer

- W - Web
- fuzz - fuzzing


> Generates random automatic inputs to test our web applications.


### Questions

#### What is Wfuzz?
Wfuzz is a tool designed for bruteforcing Web Applications.

#### What can be used for?
- It can be used for finding resources not linked (directories, servlets, scripts, etc). 
- Bruteforce GET and POST parameters for checking different kind of injections (SQL, XSS, LDAP,etc)
- Bruteforce Forms parameters (User/Password), Fuzzing,etc.

> Structured inputs

#### What is Fuzzing?

Fuzzing or fuzz testing is an **automated software testing technique** that involves providing invalid, unexpected, or random data as **inputs** to a computer program. The program is then monitored for exceptions such as crashes, failing built-in code assertions, or **potential memory leaks**.

#### When is a fuzzing tool efective?

An effective fuzzer generates semi-valid inputs that are "valid enough" in that they are not directly rejected by the parser, but do create unexpected behaviors deeper in the program and are "invalid enough" to expose corner cases that have not been properly dealt with. 

## Presentación
Presentación de 15 minutos máximo (los días 26/11 martes, 27/11 miércoles y 04/12 miércoles). Las presentaciones las haremos en orden por número de grupos. Al rededor de 6-7 grupos por día. 

> Plazo de presentación: martes 26/11/2017 a las 17:00

Documentación a entregar: tanto el documento del trabajo o memoria como la presentación.

1. Presentación que se realizará en clase.
2. Documento dónde se detalle el trabajo realizado (programas utilizados, escenarios montados, etc).
3. La evaluación del trabajo final consistirá en un 60% la presentación y 40% el documento escrito.

# Wfuzz

Wfuzz has been created to facilitate the task in web applications assessments and it is based on a simple concept: `it replaces any reference to the FUZZ keyword by the value of a given payload`.

A **payload** in Wfuzz is a source of data.

This simple concept allows any input to be injected in any field of an **HTTP request**, allowing to perform complex web security attacks in different web application components such as: **parameters**, **authentication**, **forms**, directories/files, headers, etc.

Wfuzz is more than a web content scanner:

- Wfuzz could help you to **secure** your web applications by finding and **exploiting** web application **vulnerabilities**. Wfuzz’s web application vulnerability scanner is supported by plugins.

- Wfuzz is a completely **modular framework** and makes it easy for even the newest of Python developers to contribute. **Building plugins** is simple and takes little more than a few minutes.

- Wfuzz exposes a **simple language interface** to the previous **HTTP requests/responses** performed using Wfuzz or other tools, such as Burp. This allows you to perform manual and semi-automatic tests with full context and understanding of your actions, without relying on a web application scanner underlying implementation.

It was created to facilitate the task in web applications assessments, it's a tool by **pentesters** for pentesters ;)

## Programas Utilizados


## Escenarios Montados

Ideas:
- [Basico] Probar con webs aleatoriamente.
- [Avanzado] Scrapper tester. -> Fuzz webs una a una y guardar los datos resultantes y analizarlos.
  - Así el scrapper vá adquiriendo mas y mas webs.


## Bibliografía

- [https://tools.kali.org/web-applications/wfuzz](https://tools.kali.org/web-applications/wfuzz)
- [Fuzzing wikipedia](https://en.wikipedia.org/wiki/Fuzzing)
- [American fuzzy lop](https://en.wikipedia.org/wiki/American_fuzzy_lop_(fuzzer))
- [WFuzz Code - Opensource tool](https://github.com/xmendez/wfuzz/)
- [WFuzz Documentation](https://wfuzz.readthedocs.io/en/latest/)