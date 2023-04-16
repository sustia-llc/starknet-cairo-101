# Starknet Cairo 101 Automated Workshop Solution

| Topic                                 | Contract code                                         | Contract on Starkscan                                                                                              | Completed Tx on Starkscan                                                                                              |
| ------------------------------------- | ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| General syntax                        | [Ex01](src/ex01.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x031d1866cb827c4e27bbca9ffee59fa2158b679413ffb58c3f90af56e1140e85) | [Tx](https://testnet.starkscan.co/tx/0x43922c7a3662a75c78184c11954bcae0b9532e7f75e96dab49ba0de9d143295) |
| Storage variables, getters, asserts   | [Ex02](src/ex02.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x0600f8fe0752e598b4e6b27839f00ad65215d129f385e12931323c487b6f9b36) | [Tx](https://testnet.starkscan.co/tx/0x1c120387223359d633545461d6e58bb36bb3d3fbfa9472ce068b1fbd24c487f) |
| Reading and writing storage variables | [Ex03](src/ex03.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x033d5fc40c0e262612528a9a652ada70be854d98241fb7548745262b5273c9d1) | [Tx](https://testnet.starkscan.co/tx/0x44b867c3e8f932fe604d432e4300485c2075db0b2deed550415e1f4653e2f24) |
| Mappings                              | [Ex04](src/ex04.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x06967cd33c6e064087123958e239c98f0de5e6d663660fa16a2526e8b115688a) | [Tx](https://testnet.starkscan.co/tx/0x662788ae2b8dc8fbc2a4096af567635929f8d251b3a4b9af16399371cd21d1c) |
| Variable visibility                   | [Ex05](src/ex05.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x076c32e000f7112724bba3c5f51fb1290217a1010ae555e6ecbdb2bfe6613e33) | [Tx](https://testnet.starkscan.co/tx/0x112286a4f4310b5d2870d88f6a060174a752e38d45685a54c16659806b74db) |
| Functions visibility                  | [Ex06](src/ex06.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x060987aea322cd12657588b6cdb0892db79322ab4533f7d74838ff2e2614a015) | [Tx](https://testnet.starkscan.co/tx/0x48360a1839603d897b57e41ee12603b9cb41d8be604f0d9940f795259fcda1d) |
| Comparing values                      | [Ex07](src/ex07.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x006051096480f375894eebb99948bce14a84c25093636c4b4e8222cc32a67cf0) | [Tx](https://testnet.starkscan.co/tx/0x2039dfa56006f5c24ab33a00129834149b421dba8125c540a6ca9c6c019f72f) |
| Recursions level 1                    | [Ex08](src/ex08.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x01ec8e981b1b6a7256a71f21790dd07cafeb15d02c18534a2bd4a6c8551860aa) | [Tx](https://testnet.starkscan.co/tx/0x521c9a61eac20c1d6334c322a2bc5c03c7e9cac9c47c551b6de784ebf4c70f2) |
| Recursions level 2                    | [Ex09](src/ex09.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x053b96c4ee027c53ea001479f24c10b543063e3c26d037c600e5bd31f0b21e5c) | [Tx](https://testnet.starkscan.co/tx/0x47449f115f4490a996a6248dc8b898d9609728e0e2d3a40a7cde3fe554d2120) |
| Composability                         | [Ex10](src/ex10.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x0763e89551900eba82d757a9f3862935cc7f7e47538f01ddba514f23d9a5f6e0) | [Tx](https://testnet.starkscan.co/tx/0xe3818dd185c79c2e7eb4c6bd23e52a6b916f03342d81ccb3da9867ea6e31f) |
| Importing functions                   | [Ex11](src/ex11.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x029a9a484d22a6353eff0d60ea56c6ffabaaac5e4889182287ef1d261578b197) | [Tx](https://testnet.starkscan.co/tx/0x043bb997c807d8b1cf0a6fa70888f9f0b9d3363597c78ac5ac2d14afb483ef63) |
| Events                                | [Ex12](src/ex12.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x04a221a8e3155fb03d1708881213a2ecdb05a41cf0ae6de83ddcf8f12bb04282) | [Tx](https://testnet.starkscan.co/tx/0x2bfa6c31629dfc0e59b670afa845f6314d70a54fa3f5f7e62930709d7474fa4) |
| Privacy on Starknet                   | [Ex13](src/ex13.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x067ed1d23c5cc3a34fb86edd4f8415250c79a374e87bcf2e6870321261ca9b0f) | [Tx](https://testnet.starkscan.co/tx/0x1f97545d2825f78ffac924fe37a38e024224d435152ae2551bd8fd9b1382913) |
| Multicall                             | [Ex14](src/ex14.cairo)                          | [Link](https://testnet.starkscan.co/contract/0x031e9a701a24c1d2ecd576208087dfa52f1025072cf11e54407300f64f95ce5f) | [Tx](https://testnet.starkscan.co/tx/0x07e498dba0196f541917ab178c8ad4d066e631355508943d2df26c4ef72ca2f5) |

## Ex14 Contract Details

```bash
starknet-compile src/ex14caller.cairo sierra/ex14caller.json
source ~/starknet/test/venv/bin/activate
export STARKNET_NETWORK=alpha-goerli
export STARKNET_WALLET=starkware.starknet.wallets.open_zeppelin.OpenZeppelinAccount
starknet declare --estimate_fee --contract sierra/ex14caller.json --account v0.11.0.2
starknet declare --max_fee 100441641143892 --contract sierra/ex14caller.json --account v0.11.0.2
starknet deploy --class_hash 0x6f9c608731057e4eea24eee5880de219b1aa3c3a394faf69527b6f6fef1f08b --account v0.11.0.2
```

contract: 0x04080ab51912fd7ac3332552049d9bc018c0b1efe7ee573d70e36daff272c568
