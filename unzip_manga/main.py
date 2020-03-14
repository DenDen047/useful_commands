import os
import argparse
import glob


parser = argparse.ArgumentParser(description='TODO')
parser.add_argument('--target_dir',
    type=str,
    default='/target_dir',
    required=False,
    help='zip files under this root directory are decompressed.'
)


def get_all_files(root_dir, target_extensions=['zip']):
    path_collection = []
    for extension in target_extensions:
        query = os.path.join(root_dir, f'**/*.{extension}')
        paths = glob.glob(query, recursive=True)
        path_collection += paths

    return path_collection


def main():
    # init
    args = parser.parse_args()
    print(args)

    # find all compressed files
    zip_file_paths = get_all_files(
        root_dir=args.target_dir,
        target_extensions=['zip']
    )
    print(zip_file_paths)

    # decompress those files in the loop


if __name__ == '__main__':
    main()