.class public final Lr4/zn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/co0;


# direct methods
.method public constructor <init>(Lr4/co0;)V
    .locals 0

    iput-object p1, p0, Lr4/zn0;->a:Lr4/co0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/zn0;->a:Lr4/co0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v0, v2, v1}, Lr4/co0;->p(Lr4/co0;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
