# HW1 - Bash Scripting, Git and GitHub

## Team Members

- Nikita Koyfman

## Selected Scripts

### Nikita Koyfman
- uptime_info.sh
- user_info.sh
- environment_info.sh
- count_files_by_extension.sh
- find_recent_files.sh

## Project Description

This project contains Bash scripts for H.W 1 in the Development Tools course.
All scripts are located inside the `scripts/` directory.

## How to Clone the Project

```bash
git clone https://github.com/Afeka-DevTools/26b-10142-bash-nikita-koyfman.git
cd 26b-10142-bash-nikita-koyfman
```

## Give Execute Permission

Before running the scripts give execute permission:

```bash
chmod +x scripts/*.sh
```

## Scripts

### 1. System Uptime Info

Displays how long the system has been running.

Run:

```bash
./scripts/uptime_info.sh
```


### 2. Current User Info

Displays information about the current user: username, home directory, groups and shell.

Run:

```bash
./scripts/user_info.sh
```


### 3. Important Environment Variables

Displays important environment variables such as USER, HOME, SHELL, PWD, PATH and LANG.

Run:

```bash
./scripts/environment_info.sh
```


### 4. Count Files By Extension

Counts files by their extension inside a given directory.

Run:

```bash
./scripts/count_files_by_extension.sh <directory_path>
```

Example:

```bash
./scripts/count_files_by_extension.sh .
```


### 5. Find Recently Modified Files

Finds all files that were modified in the last N days inside a given directory.

Run:

```bash
./scripts/find_recent_files.sh <directory_path> <number_of_days>
```

Example:

```bash
./scripts/find_recent_files.sh . 7
```

## Git Commands

Use the following commands to save and upload your changes:

```bash
git add .
git commit -m "Add bash scripts"
git push
```