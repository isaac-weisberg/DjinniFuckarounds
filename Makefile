DJJINNI_PATH=../djinni/src/run
JAVA_OUTPUT_FOLDER=./Lib/java-gen/
CPP_OUTPUT_FOLDER=./Lib/cpp-gen/
JNI_OUTPUT_FOLDER=./Lib/jni-gen/
OBJC_OUTPUT_FOLDER=./Lib/objc-gen/

PROJECT_DECL=./Sources/Declarations/Declarations.idl

default:
	echo "No default action\n\n\tRule 'build-decl' available. Run 'make build-decl'" 

build-decl:
	$(DJJINNI_PATH) \
		\
		--cpp-out $(CPP_OUTPUT_FOLDER) \
		\
		--objc-out $(OBJC_OUTPUT_FOLDER) \
		--objc-type-prefix DF \
		\
		--objcpp-out $(OBJC_OUTPUT_FOLDER) \
		\
		--idl $(PROJECT_DECL)
