.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Linked"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;
    }
.end annotation


# virtual methods
.method public abstract getInterfaceGraph(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
.end method

.method public abstract getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
.end method
