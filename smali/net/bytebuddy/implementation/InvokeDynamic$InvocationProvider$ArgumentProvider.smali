.class public interface abstract Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArgumentProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForNullValue;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForClassConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForStringConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForDoubleConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForFloatConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForLongConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForIntegerConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForCharacterConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForShortConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForByteConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForMethodParameter;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForField;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInstance;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForThisInstance;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$Resolved;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodParameters;,
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodInstanceAndParameters;
    }
.end annotation


# virtual methods
.method public abstract prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end method

.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$Resolved;
.end method
