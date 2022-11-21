.class public final synthetic Lr4/c50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:Lr4/d51;

.field public final b:Lr4/pa4;


# direct methods
.method public constructor <init>(Lr4/d51;Lr4/pa4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c50;->a:Lr4/d51;

    iput-object p2, p0, Lr4/c50;->b:Lr4/pa4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr4/c50;->a:Lr4/d51;

    iget-object v1, p0, Lr4/c50;->b:Lr4/pa4;

    check-cast p1, Lr4/f61;

    invoke-interface {p1, v0, v1}, Lr4/f61;->q(Lr4/d51;Lr4/pa4;)V

    iget p1, v1, Lr4/pa4;->a:I

    return-void
.end method
