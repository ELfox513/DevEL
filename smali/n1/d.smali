.class public Ln1/d;
.super Lb2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/d$a;
    }
.end annotation


# static fields
.field public static final a:Ln1/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln1/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln1/d;-><init>(I)V

    sput-object v0, Ln1/d;->a:Ln1/d;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public A(ILx1/e0;Lx1/y;Ln1/c;)V
    .locals 1

    new-instance v0, Ln1/d$a;

    invoke-direct {v0, p2, p3, p4}, Ln1/d$a;-><init>(Lx1/e0;Lx1/y;Ln1/c;)V

    invoke-virtual {p0, p1, v0}, Ln1/d;->z(ILn1/d$a;)V

    return-void
.end method

.method public x(I)Ln1/d$a;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/d$a;

    return-object p1
.end method

.method public z(ILn1/d$a;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
