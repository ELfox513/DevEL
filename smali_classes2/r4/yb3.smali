.class public final synthetic Lr4/yb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final a:Lr4/ij3;


# direct methods
.method public constructor <init>(Lr4/ij3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yb3;->a:Lr4/ij3;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lr4/yb3;->a:Lr4/ij3;

    sget-object v1, Lr4/nk3;->a:Ljava/util/regex/Pattern;

    invoke-interface {v0, p2}, Lr4/ij3;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Lr4/ij3;->a(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
