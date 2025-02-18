import sys
from extract_feature.slowfast.extract_feature.extract import main


if __name__ == '__main__':
    if len(sys.argv) == 1:
        print("No arguments provided, using default values")
        input_args = ["--csv", "../ActivitiNet/features/slowfast_info.csv",
                      "--batch_size", '1', "--num_decoding_thread", '1',
                      "--clip_len", '2']
        sys.argv[1:] = input_args
    main()
