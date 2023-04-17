use starknet::ContractAddress;
use array::ArrayTrait;

#[abi]
trait Iex01 {
    fn claim_points();
}

#[abi]
trait Iex02 {
    fn my_secret_value() -> u128;
    fn claim_points(my_value: u128);
}

#[abi]
trait Iex03 {
    fn increment_counter();
    fn decrement_counter();
    fn claim_points();
}

#[abi]
trait Iex04 {
    fn assign_user_slot();
    fn get_user_slots(account: ContractAddress) -> u128;
    fn get_values_mapped(slot: u128) -> u128;
    fn claim_points(expected_value: u128);
}

#[abi]
trait Iex05 {
    fn assign_user_slot();
    fn get_user_slots(account: ContractAddress) -> u128;
    fn copy_secret_value_to_readable_mapping();
    fn get_user_values(account: ContractAddress) -> u128;
    fn claim_points(expected_value: u128);
}

#[abi]
trait Iex06 {
    fn assign_user_slot();
    fn get_user_slots(account: ContractAddress) -> u128;
    fn external_handler_for_internal_function(a_value: u128);
    fn get_user_values(account: ContractAddress) -> u128;
    fn claim_points(expected_value: u128);
}

#[abi]
trait Iex07 {
    fn claim_points(value_a: u128, value_b: u128);
}

#[abi]
trait Iex08 {
    fn set_user_values(account: ContractAddress, values: Array::<u128>);
    fn get_user_values(account: ContractAddress, slot: u128) -> u128;
    fn claim_points();
}

#[abi]
trait Iex09 {
    fn claim_points(array: Array::<u128>);
}

#[abi]
trait Iex10 {
    fn get_ex10b_address() -> ContractAddress;
    fn claim_points(secret_value_i_guess: u128, next_secret_value_i_chose: u128);
}

#[abi]
trait Iex10b {
    fn get_secret_value() -> u128;
}

#[abi]
trait Iex11 {
    fn secret_value() -> u128;
    fn claim_points(secret_value_i_guess: u128, next_secret_value_i_chose: u128);
}

#[abi]
trait Iex14 {
    fn claim_points();
}

#[contract]
mod Ex14Caller {
    use starknet::get_contract_address;
    use super::ContractAddress;
    use super::ArrayTrait;

    use super::Iex01Dispatcher;
    use super::Iex01DispatcherTrait;
    use super::Iex02Dispatcher;
    use super::Iex02DispatcherTrait;
    use super::Iex03Dispatcher;
    use super::Iex03DispatcherTrait;
    use super::Iex04Dispatcher;
    use super::Iex04DispatcherTrait;
    use super::Iex05Dispatcher;
    use super::Iex05DispatcherTrait;
    use super::Iex06Dispatcher;
    use super::Iex06DispatcherTrait;
    use super::Iex07Dispatcher;
    use super::Iex07DispatcherTrait;
    use super::Iex08Dispatcher;
    use super::Iex08DispatcherTrait;
    use super::Iex09Dispatcher;
    use super::Iex09DispatcherTrait;
    use super::Iex10Dispatcher;
    use super::Iex10DispatcherTrait;
    use super::Iex10bDispatcher;
    use super::Iex10bDispatcherTrait;
    use super::Iex11Dispatcher;
    use super::Iex11DispatcherTrait;
    use super::Iex14Dispatcher;
    use super::Iex14DispatcherTrait;

    struct Storage {
        ex01_address: ContractAddress,
        ex02_address: ContractAddress,
        ex03_address: ContractAddress,
        ex04_address: ContractAddress,
        ex05_address: ContractAddress,
        ex06_address: ContractAddress,
        ex07_address: ContractAddress,
        ex08_address: ContractAddress,
        ex09_address: ContractAddress,
        ex10_address: ContractAddress,
        ex11_address: ContractAddress,
        ex14_address: ContractAddress,
    }

    #[constructor]
    fn constructor() {
        ex01_address::write(starknet::contract_address_const::<0x031d1866cb827c4e27bbca9ffee59fa2158b679413ffb58c3f90af56e1140e85>());
        ex02_address::write(starknet::contract_address_const::<0x0600f8fe0752e598b4e6b27839f00ad65215d129f385e12931323c487b6f9b36>());
        ex03_address::write(starknet::contract_address_const::<0x033d5fc40c0e262612528a9a652ada70be854d98241fb7548745262b5273c9d1>());
        ex04_address::write(starknet::contract_address_const::<0x06967cd33c6e064087123958e239c98f0de5e6d663660fa16a2526e8b115688a>());
        ex05_address::write(starknet::contract_address_const::<0x076c32e000f7112724bba3c5f51fb1290217a1010ae555e6ecbdb2bfe6613e33>());
        ex06_address::write(starknet::contract_address_const::<0x060987aea322cd12657588b6cdb0892db79322ab4533f7d74838ff2e2614a015>());
        ex07_address::write(starknet::contract_address_const::<0x006051096480f375894eebb99948bce14a84c25093636c4b4e8222cc32a67cf0>());
        ex08_address::write(starknet::contract_address_const::<0x01ec8e981b1b6a7256a71f21790dd07cafeb15d02c18534a2bd4a6c8551860aa>());
        ex09_address::write(starknet::contract_address_const::<0x053b96c4ee027c53ea001479f24c10b543063e3c26d037c600e5bd31f0b21e5c>());
        ex10_address::write(starknet::contract_address_const::<0x0763e89551900eba82d757a9f3862935cc7f7e47538f01ddba514f23d9a5f6e0>());
        ex11_address::write(starknet::contract_address_const::<0x029a9a484d22a6353eff0d60ea56c6ffabaaac5e4889182287ef1d261578b197>());
        ex14_address::write(starknet::contract_address_const::<0x031e9a701a24c1d2ecd576208087dfa52f1025072cf11e54407300f64f95ce5f>());
    }

    #[external]
    fn validate_various_exercises() {
        let contract_address: ContractAddress = get_contract_address();

        // ex01
        Iex01Dispatcher { contract_address: ex01_address::read() }.claim_points();

        // ex02
        let my_secret_value = Iex02Dispatcher { contract_address: ex02_address::read() }.my_secret_value();
        Iex02Dispatcher { contract_address: ex02_address::read() }.claim_points(my_secret_value);

        // ex03
        Iex03Dispatcher { contract_address: ex03_address::read() }.increment_counter();
        Iex03Dispatcher { contract_address: ex03_address::read() }.increment_counter();
        Iex03Dispatcher { contract_address: ex03_address::read() }.decrement_counter();
        Iex03Dispatcher { contract_address: ex03_address::read() }.claim_points();

        // ex04
        Iex04Dispatcher { contract_address: ex04_address::read() }.assign_user_slot();
        let user_slot = Iex04Dispatcher { contract_address: ex04_address::read() }.get_user_slots(contract_address);
        let user_value = Iex04Dispatcher { contract_address: ex04_address::read() }.get_values_mapped(user_slot);
        Iex04Dispatcher { contract_address: ex04_address::read() }.claim_points(user_value - 32_u128);

        // ex05
        Iex05Dispatcher { contract_address: ex05_address::read() }.assign_user_slot();
        let user_slot = Iex05Dispatcher { contract_address: ex05_address::read() }.get_user_slots(contract_address);
        Iex05Dispatcher { contract_address: ex05_address::read() }.copy_secret_value_to_readable_mapping();
        let user_value = Iex05Dispatcher { contract_address: ex05_address::read() }.get_user_values(contract_address);
        Iex05Dispatcher { contract_address: ex05_address::read() }.claim_points(user_value + 23_u128 - 32_u128);

        // ex06
        Iex06Dispatcher { contract_address: ex06_address::read() }.assign_user_slot();
        let user_slot = Iex06Dispatcher { contract_address: ex06_address::read() }.get_user_slots(contract_address);
        Iex06Dispatcher { contract_address: ex06_address::read() }.external_handler_for_internal_function(42_u128);
        let user_value = Iex06Dispatcher { contract_address: ex06_address::read() }.get_user_values(contract_address);
        Iex06Dispatcher { contract_address: ex06_address::read() }.claim_points(user_value);

        // ex07
        Iex07Dispatcher { contract_address: ex07_address::read() }.claim_points(42_u128, 0_u128);

        // ex08
        let mut ex08_values_arr = ArrayTrait::new();
        ex08_values_arr.append(0_u128);
        ex08_values_arr.append(1_u128);
        ex08_values_arr.append(2_u128);
        ex08_values_arr.append(3_u128);
        ex08_values_arr.append(4_u128);
        ex08_values_arr.append(5_u128);
        ex08_values_arr.append(6_u128);
        ex08_values_arr.append(7_u128);
        ex08_values_arr.append(8_u128);
        ex08_values_arr.append(9_u128);
        ex08_values_arr.append(10_u128);
        Iex08Dispatcher { contract_address: ex08_address::read() }.set_user_values(contract_address, ex08_values_arr);
        let user_value = Iex08Dispatcher { contract_address: ex08_address::read() }.get_user_values(contract_address, 10_u128);
        Iex08Dispatcher { contract_address: ex08_address::read() }.claim_points();

        // ex09
        let mut ex09_values_arr = ArrayTrait::new();
        ex09_values_arr.append(10_u128);
        ex09_values_arr.append(20_u128);
        ex09_values_arr.append(30_u128);
        ex09_values_arr.append(42_u128);
        Iex09Dispatcher { contract_address: ex09_address::read() }.claim_points(ex09_values_arr);

        // ex10
        let ex10b_address = Iex10Dispatcher { contract_address: ex10_address::read() }.get_ex10b_address();
        let secret_value = Iex10bDispatcher { contract_address: ex10b_address }.get_secret_value();
        Iex10Dispatcher { contract_address: ex10_address::read() }.claim_points(secret_value, 3141592653_u128);

        // ex11
        let mut secret_value = Iex11Dispatcher { contract_address: ex11_address::read() }.secret_value();
        
        // if the number is large, need to re-add 42069_u128 before comparison
        // NOTE: this code will not accurately predict values between
        // 340282366920938463463374607431768211455_u128 - 42069_u128 - 42069_u128 - 42069_u128 + 1
        // and 340282366920938463463374607431768211455_u128 - 42069_u128
        // If you find a secret value in this gray area, you can always check the next_secret_value_i_chose
        // in the last *successful* transaction, to verify success check internal calls on the tx for "remove_points"
        if (secret_value + 42069_u128 > 340282366920938463463374607431768211455_u128 - 42069_u128) {
            secret_value += 42069_u128;
        } else {
            secret_value -= 42069_u128;
        }

        Iex11Dispatcher { contract_address: ex11_address::read() }.claim_points(secret_value, 314159265_u128);
    }

    #[external]
    fn claim_points_ex14() {
        Iex14Dispatcher { contract_address: ex14_address::read() }.claim_points();
    }
}
