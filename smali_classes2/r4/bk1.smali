.class public final synthetic Lr4/bk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ek1;

.field public final b:Lr4/al1;


# direct methods
.method public constructor <init>(Lr4/ek1;Lr4/al1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bk1;->a:Lr4/ek1;

    iput-object p2, p0, Lr4/bk1;->b:Lr4/al1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/bk1;->a:Lr4/ek1;

    iget-object v1, p0, Lr4/bk1;->b:Lr4/al1;

    invoke-virtual {v0, v1}, Lr4/ek1;->f(Lr4/al1;)V

    return-void
.end method
