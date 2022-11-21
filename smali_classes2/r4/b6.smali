.class public final synthetic Lr4/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/c6;

.field public final b:Lr4/l33;

.field public final d:Lr4/ft3;


# direct methods
.method public constructor <init>(Lr4/c6;Lr4/l33;Lr4/ft3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b6;->a:Lr4/c6;

    iput-object p2, p0, Lr4/b6;->b:Lr4/l33;

    iput-object p3, p0, Lr4/b6;->d:Lr4/ft3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/b6;->a:Lr4/c6;

    iget-object v1, p0, Lr4/b6;->b:Lr4/l33;

    iget-object v2, p0, Lr4/b6;->d:Lr4/ft3;

    invoke-virtual {v0, v1, v2}, Lr4/c6;->t(Lr4/l33;Lr4/ft3;)V

    return-void
.end method
