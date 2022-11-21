.class public final Lr4/eu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vu3;


# instance fields
.field public final a:I

.field public final synthetic b:Lr4/hu3;


# direct methods
.method public constructor <init>(Lr4/hu3;I)V
    .locals 0

    iput-object p1, p0, Lr4/eu3;->b:Lr4/hu3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lr4/eu3;->a:I

    return-void
.end method

.method public static synthetic e(Lr4/eu3;)I
    .locals 0

    iget p0, p0, Lr4/eu3;->a:I

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lr4/eu3;->b:Lr4/hu3;

    iget v1, p0, Lr4/eu3;->a:I

    invoke-virtual {v0, v1}, Lr4/hu3;->U(I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lr4/eu3;->b:Lr4/hu3;

    iget v1, p0, Lr4/eu3;->a:I

    invoke-virtual {v0, v1}, Lr4/hu3;->V(I)V

    return-void
.end method

.method public final c(J)I
    .locals 2

    iget-object v0, p0, Lr4/eu3;->b:Lr4/hu3;

    iget v1, p0, Lr4/eu3;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lr4/hu3;->t(IJ)I

    move-result p1

    return p1
.end method

.method public final d(Lr4/f5;Lr4/i4;I)I
    .locals 2

    iget-object v0, p0, Lr4/eu3;->b:Lr4/hu3;

    iget v1, p0, Lr4/eu3;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lr4/hu3;->X(ILr4/f5;Lr4/i4;I)I

    move-result p1

    return p1
.end method
