.class public final synthetic Lr4/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:Lr4/o6;

.field public final b:I


# direct methods
.method public constructor <init>(Lr4/o6;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/k4;->a:Lr4/o6;

    iput p2, p0, Lr4/k4;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr4/k4;->a:Lr4/o6;

    iget v1, p0, Lr4/k4;->b:I

    check-cast p1, Lr4/u6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-interface {p1, v0, v1}, Lr4/u6;->M0(Lr4/e8;I)V

    return-void
.end method
