.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Prepared"
.end annotation


# virtual methods
.method public abstract compile(Lnet/bytebuddy/implementation/Implementation$Target$Factory;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;
.end method

.method public abstract getInstrumentedMethods()Lnet/bytebuddy/description/method/MethodList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.end method

.method public abstract getMethods()Lnet/bytebuddy/description/method/MethodList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
.end method
