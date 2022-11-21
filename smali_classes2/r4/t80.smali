.class public final synthetic Lr4/t80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/p90;

.field public final b:Lr4/o90;


# direct methods
.method public constructor <init>(Lr4/p90;Lr4/u;Lr4/o90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/t80;->a:Lr4/p90;

    iput-object p3, p0, Lr4/t80;->b:Lr4/o90;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/t80;->a:Lr4/p90;

    iget-object v1, p0, Lr4/t80;->b:Lr4/o90;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lr4/p90;->i(Lr4/u;Lr4/o90;)V

    return-void
.end method
