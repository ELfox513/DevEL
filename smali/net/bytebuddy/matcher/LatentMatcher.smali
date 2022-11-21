.class public interface abstract Lnet/bytebuddy/matcher/LatentMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;,
        Lnet/bytebuddy/matcher/LatentMatcher$Conjunction;,
        Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;,
        Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken;,
        Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;,
        Lnet/bytebuddy/matcher/LatentMatcher$Resolved;,
        Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;"
        }
    .end annotation
.end method
