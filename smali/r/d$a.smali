.class public Lr/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr/d;->i(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr/d$d;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr/d$d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lr/d$a;->a:Lr/d$d;

    iput-object p2, p0, Lr/d$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lr/d$a;->a:Lr/d$d;

    iget-object v1, p0, Lr/d$a;->b:Ljava/lang/Object;

    iput-object v1, v0, Lr/d$d;->a:Ljava/lang/Object;

    return-void
.end method
