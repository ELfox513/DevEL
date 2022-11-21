.class public final synthetic Lr4/bu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/hu3;

.field public final b:Lr4/z04;


# direct methods
.method public constructor <init>(Lr4/hu3;Lr4/z04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bu3;->a:Lr4/hu3;

    iput-object p2, p0, Lr4/bu3;->b:Lr4/z04;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/bu3;->a:Lr4/hu3;

    iget-object v1, p0, Lr4/bu3;->b:Lr4/z04;

    invoke-virtual {v0, v1}, Lr4/hu3;->w(Lr4/z04;)V

    return-void
.end method
