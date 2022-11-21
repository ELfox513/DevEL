.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$ForDefaultConstructor;,
        Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;
    }
.end annotation


# virtual methods
.method public abstract extractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end method

.method public abstract inject(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
.end method
