# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..3\n"; }
END {print "not ok 1\n" unless $loaded;}
use Geography::Country::Dial qw(dialcode);
$loaded = 1;
print "ok 1\n";

print "not " unless (dialcode('Sweden') == 46);
print "ok 2\n";

eval { require Net::Country; $l2 = 1; };

if ($l2) {

	print "not " unless (dialcode('NO') == 47);
	print "ok 3\n";
} else {
	print "ok 3 # Skipping test on this platform\n";
}

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

