.class public final synthetic Lr4/ti1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/mj1;


# direct methods
.method public constructor <init>(Lr4/mj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ti1;->a:Lr4/mj1;

    return-void
.end method

.method public static a(Lr4/mj1;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lr4/ti1;

    invoke-direct {v0, p0}, Lr4/ti1;-><init>(Lr4/mj1;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/ti1;->a:Lr4/mj1;

    invoke-interface {v0}, Lr4/mj1;->B()V

    return-void
.end method
