#  @see https://bats-core.readthedocs.io/en/stable/tutorial.html#quick-installation


setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    # ... the remaining setup is unchanged

    # get the containing directory of this file
    # use $BATS_TEST_FILENAME instead of ${BASH_SOURCE[0]} or $0,
    # as those will point to the bats executable's location or the preprocessed file respectively
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    # make executables in src/ visible to PATH
    PATH="$DIR/../aliases:$PATH"
}

# @xtest "can run our script" {
#     run opip.sh # notice `run`!
#     assert_output 'Welcome to our project!'
# }

# get_projectsh_welcome_message() {
#     # not valid bats syntax hence wrapped in function
#  solived with --partial see below
#     opip.sh  2>&1 | grep Welcome
# }

# @test "Check welcome message" {
#     run get_projectsh_welcome_message
#     assert_output 'Welcome to our project!'
# }

@test "Check welcome message" {
    run opip.sh
    assert_output --partial 'Welcome to our project!'
}

teardown() {
    rm -f /tmp/bats-tutorial-project-ran
}