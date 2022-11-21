.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous;,
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Resolved;,
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Initial;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asNode(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
.end method

.method public abstract extendBy(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer<",
            "TW;>;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry<",
            "TW;>;"
        }
    .end annotation
.end method

.method public abstract getCandidates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized<",
            "TW;>;"
        }
    .end annotation
.end method

.method public abstract getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
.end method

.method public abstract inject(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry<",
            "TW;>;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry<",
            "TW;>;"
        }
    .end annotation
.end method
