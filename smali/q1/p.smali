.class public final Lq1/p;
.super Lb2/f;
.source "SourceFile"

# interfaces
.implements Lq1/h;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Lq1/g;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq1/g;

    return-object p1
.end method

.method public x(ILq1/g;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method
