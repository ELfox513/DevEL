.class final enum Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$5;
.super Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/matcher/MethodSortMatcher$1;)V

    return-void
.end method


# virtual methods
.method public isSort(Lnet/bytebuddy/description/method/MethodDescription;)Z
    .locals 0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isDefaultMethod()Z

    move-result p1

    return p1
.end method
