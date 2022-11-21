.class public interface abstract Lnet/bytebuddy/matcher/ElementMatcher$Junction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/ElementMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Junction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;,
        Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;,
        Lnet/bytebuddy/matcher/ElementMatcher$Junction$Conjunction;,
        Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "TS;>;"
    }
.end annotation


# virtual methods
.method public abstract and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TS;>(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TU;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TS;>(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TU;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TU;>;"
        }
    .end annotation
.end method
