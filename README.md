# PowerShell Scripts

## Basic Concepts of PowerShell Used in This Script

1. **Variables**: Start with `$` and store data (e.g., `$paths`).

2. **Arrays**: Defined using `@(...)`. They store lists of values (e.g., multiple registry paths).

3. **Cmdlets**: PowerShell commands follow the format `Verb-Noun` (e.g., `Get-ChildItem`). These are predefined actions in PowerShell.

4. **Pipelines (`|`)**: This passes the output of one cmdlet as input to another.

5. **Conditional Statements**: Use `if` statements to execute code based on a condition (e.g., checking the processor architecture).

6. **Select-Object and Calculated Properties**: Used to format and filter output.

7. **Environment Variables**: Accessed using `$env:`, which provides information about the environment (e.g., `$env:Processor_Architecture`).

## Example of How to Run a Script

1. **Basic Use**:
   ```powershell
   .\Get-ProgID.ps1
   ```
   This command runs the script and lists all ProgIDs.

2. **Filtering Results**:
   ```powershell
   .\Get-ProgID.ps1 | Where-Object { $_.ProgID -like "*ado*" }
   ```
   This command runs the script and filters the results to only show ProgIDs that contain "ado" (case-insensitive search).

## Not Signed error

This error is due to PowerShell’s **execution policy**, which determines what kind of scripts can be run on your system. By default, PowerShell restricts script execution for security purposes, especially for scripts that are not digitally signed.

### Solution

To resolve this, you can change the **execution policy**. Here are some options:

#### 1. Temporarily Bypass Execution Policy for a Single Session
If you don’t want to change the policy permanently, you can bypass it just for the current PowerShell session by running this command before running your script:

```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
```

This will only apply to the current PowerShell session and revert back when you close PowerShell.

#### 2. Set Execution Policy to RemoteSigned
If you frequently work with PowerShell scripts that are not signed, you can set the policy to **RemoteSigned**. This policy allows you to run local scripts without a digital signature, but requires scripts downloaded from the internet to be signed.

To change the execution policy to **RemoteSigned**, use:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
```

This command applies only to the current user and will persist across sessions.

#### 3. Run as Administrator
If you encounter issues changing the execution policy, make sure you are running PowerShell as an Administrator. Right-click on PowerShell and select **Run as Administrator**.

### Explanation of Execution Policies

- **Restricted**: No PowerShell scripts can be run. This is the default on some systems.
- **AllSigned**: Only scripts signed by a trusted publisher can be run.
- **RemoteSigned**: Local scripts can run without a signature, but scripts downloaded from the internet require a signature.
- **Unrestricted**: All scripts can be run, but you’ll be warned about scripts downloaded from the internet.

### Example Command to Run Your Script

Once the policy is changed, you should be able to run your script like this:

```powershell
.\Get-ProgID.ps1
```

### Important Note
Be cautious when changing execution policies. **RemoteSigned** is generally safer than **Unrestricted**, as it still adds a layer of security for scripts downloaded from the internet.

If you have any further questions, feel free to ask!