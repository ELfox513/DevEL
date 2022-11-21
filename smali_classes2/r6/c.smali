.class public final synthetic Lr6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr6/f;


# direct methods
.method public synthetic constructor <init>(Lr6/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/c;->a:Lr6/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr6/c;->a:Lr6/f;

    invoke-static {v0}, Lr6/f;->c(Lr6/f;)V

    return-void
.end method
