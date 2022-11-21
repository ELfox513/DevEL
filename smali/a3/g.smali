.class public final synthetic La3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:La3/n;


# direct methods
.method public constructor <init>(La3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/g;->a:La3/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, La3/g;->a:La3/n;

    invoke-virtual {v0}, La3/n;->g7()V

    return-void
.end method
