// #[starknet::interface]
// trait ICounterContract<TContractState> {
//     fn get_counter(self: @TContractState) -> u32;
//     fn set_counter(ref self: TContractState, new_value: u32);
//     fn increase_counter(ref self: TContractState);
// }

// #[starknet::contract]
// mod SomeContract {
//     #[storage]
//     struct Storage {
//         counter: u32,
//     }

//     #[constructor]
//     fn constructor(ref self: ContractState, initial_counter: u32) -> felt252 {
//         self.counter.write(initial_counter);
//         return initial_counter.into();
//     }

//     #[abi(embed_v0)]
//     impl CounterCounter of super::ICounterContract<ContractState> {
//         fn get_counter(self: @ContractState) -> u32 {
//             self.counter.read()
//         }

//         fn increase_counter(ref self: ContractState) {
//             let existing_counter = self.counter.read();
//             self.counter.write(existing_counter + 1);
//         }

//         fn set_counter(ref self: ContractState, new_value: u32) {
//             self.counter.write(new_value)
//         }
//     }
// }

// ------------------------- 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥 -------------------------

// #[starknet::interface]
// trait ICounterContract<TCounterContract> {
//     fn get_counter(self: @TCounterContract) -> u32;
//     fn set_counter(ref self: TCounterContract, new_counter: u32);
//     fn increase_counter(ref self: TCounterContract);
// }

// #[event]
// #[derive(Drop, starknet::Event)]
// enum Event {
//     OwnershipTransferred: OwnershipTransferred
// }

// #[derive(Drop, starknet::Event)]
// struct OwnershipTransferred {
// #[key]
//     previous_owner: ContractAddress,
//     new_owner: ContractAddress
// }

// #[starknet::contract]
// mod CounterContract {
//     #[storage]
//     struct Storage {
//         counter: u32
//     }

//     #[constructor]
//     fn constructor(ref self: ContractState, initial_counter: u32) {
//         self.counter.write(initial_counter)
//     }

//     #[abi(embed_v0)]
//     impl counter_implementation of super::ICounterContract<ContractState> {
//         fn get_counter(self: @ContractState) -> u32 {
//             return self.counter.read();
//         }
//         fn set_counter(ref self: ContractState, new_counter: u32) {
//             let current_counter = self.counter.read();
//             self.counter.write(current_counter);
//         }
//         fn increase_counter(ref self: ContractState) {
//             let current_counter = self.counter.read();
//             self.counter.write(current_counter + 1);
//         }
//     }
// }

// -------------------------------------- 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥 --------------------------------- 
// -------------------------------------- THIRD TRIAL ---------------------------------------------

// #[starknet::interface]
// trait ICounterContract<TCounterContract> {
//     fn getCounter(self: @TCounterContract) -> usize;
//     fn increaseCounter(ref self: TCounterContract);
//     fn setCounter(ref self: TCounterContract, newValue: usize);
// }

// #[starknet::contract]
// mod CounterContract {
//     #[storage]
//     struct Storage {
//         counter: usize
//     }

//     #[constructor]
//     fn constructor(ref self: ContractState, initialCounter: usize) {
//         self.counter.write(initialCounter);
//     }

//     #[abi(embed_v0)]
//     impl counter_implementation of super::ICounterContract<ContractState> {
//         fn getCounter(self: @ContractState) -> usize {
//             let currentCounter = self.counter.read();
//             return currentCounter;
//         }
//         fn increaseCounter(ref self: ContractState) {
//             let currentCounter = self.counter.read();
//             self.counter.write(currentCounter + 1);
//         }
//         fn setCounter(ref self: ContractState, newValue: usize) {
//             self.counter.write(newValue);
//         }
//     }
// }

// -------------------------------------- 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥 --------------------------------- 
// -------------------------------------- FOURTH TRIAL ---------------------------------------------

// #[starknet::interface]
// trait ICounterContract<TCounterContract> {
//     fn get_counter(self: @TCounterContract) -> u32;
//     fn set_counter(ref self: TCounterContract, new_value: u32);
//     fn increase_counter(ref self: TCounterContract);
// }

// #[starknet::contract]
// mod CounterContract {
//     // #[event]
//     // #[derive(Drop, starknet::Event)]
//     // enum Event {
//     //     OwnershipTransferred: OwnershipTransferred
//     // }

//     // #[derive(Drop, starknet::Event)]
//     // struct OwnershipTransferred {
//     //     #[key]
//     //     previous_owner: ContractAddress,
//     //     new_owner: ContractAddress
//     // }

//     #[storage]
//     struct Storage {
//         counter: u32
//     }

//     #[constructor]
//     fn constructor(ref self: ContractState, initial_counter: u32) {
//         self.counter.write(initial_counter);
//     }

//     #[abi(embed_v0)]
//     impl CounterMethods of super::ICounterContract<ContractState> {
//         fn get_counter(self: @ContractState) -> u32 {
//             return self.counter.read();
//         }
//         fn set_counter(ref self: ContractState, new_value: u32) {
//             let initial_counter = self.counter.read();
//             self.counter.write(initial_counter);
//         }
//         fn increase_counter(ref self: ContractState) {
//             let initial_counter = self.counter.read();
//             self.counter.write(initial_counter + 1_u32);
//         }
//     }
// }

// FIFTH TRIAL 🔥🔥🔥🔥🔥🔥🔥🔥 -------

// #[starknet::interface]
// trait ICounterContract<TCounterContract> {
//     fn getCount(self: @TCounterContract) -> u32;
//     fn setCount(ref self: TCounterContract, newCounter: u32);
//     fn increaseCount(ref self: TCounterContract, newCounter: u32);
// }

// #[starknet::contract]
// mod countercontract {
//     #[storage]
//     struct Storage {
//         counter: u32
//     }

//     #[constructor]
//     fn constructor(ref self: ContractState, initialCounter: u32) {
//         self.counter.write(initialCounter)
//     }

//     #[abi(embed_v0)]
//     impl CounterMethod of super::ICounterContract<ContractState> {
//         fn getCount(self: @ContractState) -> u32 {
//             self.counter.read()
//         }
//         fn setCount(ref self: ContractState, newCounter: u32) {
//             let new = self.counter.write(newCounter);
//             return new;
//         }
//         fn increaseCount(ref self: ContractState, newCounter: u32) {
//             let initialCouinter: u32 = self.counter.read();
//             self.counter.write(initialCouinter + newCounter);
//         }
//     }
// }

#[starknet::interface]
trait ICounterContract<TCounterContract> {
    fn getCounter(self: @TCounterContract) -> u32;
    fn increaseCounter(ref self: TCounterContract);
    fn changeCounter(ref self: TCounterContract, newCounter: u32);
}


#[starknet::contract]
mod counter_contract {
    #[storage]
    struct Storage {
        counter: u32
    }

    #[constructor]
    fn constructor(ref self: ContractState, initial_counter: u32) {
        self.counter.write(initial_counter)
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        CounterChanged: CounterChanged
    }

    #[derive(Drop, starknet::Event)]
    struct CounterChanged {
        #[key]
        CounterIncreased: u32
    }

    #[abi(embed_v0)]
    impl counterContract of super::ICounterContract<ContractState> {
        fn getCounter(self: @ContractState) -> u32 {
            return self.counter.read();
        }

        fn increaseCounter(ref self: ContractState) {
            let current_counter: u32 = self.counter.read();
            self.counter.write(current_counter + 1);
            self.emit(CounterChanged { CounterIncreased: self.counter.read() })
        }

        fn changeCounter(ref self: ContractState, newCounter: u32) {
            self.counter.write(newCounter)
        }
    }
}
