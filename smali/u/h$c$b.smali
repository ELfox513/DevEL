.class public Lu/h$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/h$c;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu/h$c;


# direct methods
.method public constructor <init>(Lu/h$c;I)V
    .locals 0

    iput-object p1, p0, Lu/h$c$b;->b:Lu/h$c;

    iput p2, p0, Lu/h$c$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lu/h$c$b;->b:Lu/h$c;

    iget v1, p0, Lu/h$c$b;->a:I

    invoke-virtual {v0, v1}, Lu/h$c;->d(I)V

    return-void
.end method
