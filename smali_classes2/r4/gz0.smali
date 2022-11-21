.class public final synthetic Lr4/gz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/hz0;


# direct methods
.method public constructor <init>(Lr4/hz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gz0;->a:Lr4/hz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/gz0;->a:Lr4/hz0;

    iget-object v0, v0, Lr4/hz0;->a:Lr4/iz0;

    invoke-static {v0}, Lr4/iz0;->b(Lr4/iz0;)Lr4/oz0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/oz0;->b()V

    return-void
.end method
