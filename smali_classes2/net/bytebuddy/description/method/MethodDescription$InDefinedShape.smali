.class public interface abstract Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/method/MethodDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InDefinedShape"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
    }
.end annotation


# virtual methods
.method public abstract getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end method
