.class public final synthetic Lr4/tx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/is3;

.field public final b:Lr4/og0;


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/og0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tx1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/tx1;->b:Lr4/og0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/tx1;->a:Lr4/is3;

    iget-object v1, p0, Lr4/tx1;->b:Lr4/og0;

    check-cast p1, Lr4/sv1;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/xx1;

    invoke-interface {p1, v1}, Lr4/xx1;->a(Lr4/og0;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
