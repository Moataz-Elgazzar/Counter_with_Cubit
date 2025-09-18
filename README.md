# counter_with_cubit



## Description

This is a Flutter application that demonstrates **Cubit** from the **flutter_bloc** package.  
The app allows the user to:

- Increment the counter
- Decrement the counter
- Reset the counter to zero

All actions have a **loading state** to simulate asynchronous operations.

## Features

- **Increment** counter with a delay
- **Decrement** counter with a delay (cannot go below 0)
- **Reset** counter to 0 with a delay
- **SnackBar** notification when the counter is updated
- Loading indicator during state changes


lib/
│
├── counter_screen.dart    # Main UI screen
├── main.dart              # App entry point
└── cubit/
    ├── counter_cubit.dart # Counter Cubit logic
    └── counter_state.dart # States of the counter





## State Management

- The app uses Cubit for managing the counter state:

- IntialCounter → Initial state of the counter

- LoadingCounter → Indicates that the counter is updating

- UpdatedCounter → State after increment/decrement/reset

- ResetCounter → Optional state for reset (not used in UI but defined)

# CounterCubit provides 3 main functions:

- add() → Increment counter with 1-second delay

- remove() → Decrement counter with 1-second delay (minimum 0)

- reset() → Reset counter to 0 with 1-second delay


## Screenshots
[Screenshot_1758221025.png]


