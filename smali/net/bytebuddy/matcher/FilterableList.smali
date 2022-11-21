.class public interface abstract Lnet/bytebuddy/matcher/FilterableList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/FilterableList$AbstractBase;,
        Lnet/bytebuddy/matcher/FilterableList$Empty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lnet/bytebuddy/matcher/FilterableList<",
        "TT;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)TS;"
        }
    .end annotation
.end method

.method public abstract getOnly()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract subList(II)Lnet/bytebuddy/matcher/FilterableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TS;"
        }
    .end annotation
.end method
