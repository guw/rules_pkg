# This content is generated by {GENERATOR}
load("@rules_pkg//toolchains/git:git.bzl", "git_toolchain")

git_toolchain(
    name = "git_auto",
    # path to git executable
    path = "{GIT_PATH}",
    # path to the top of the git client (but really any folder under it)
    client_top = "{GIT_ROOT}",
)

toolchain(
    name = "git_auto_toolchain",
    toolchain = ":git_auto",
    toolchain_type = "@rules_pkg//toolchains/git:git_toolchain_type",
)

toolchain(
    name = "zzz_git_missing_toolchain",  # keep name lexicographically last
    toolchain = "@rules_pkg//toolchains/git:no_git",
    toolchain_type = "@rules_pkg//toolchains/git:git_toolchain_type",
)
