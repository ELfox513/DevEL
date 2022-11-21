.class public final Lg5/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/v8;


# direct methods
.method public constructor <init>(Lg5/v8;)V
    .locals 0

    iput-object p1, p0, Lg5/u8;->a:Lg5/v8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/u8;->a:Lg5/v8;

    iget-object v0, v0, Lg5/v8;->d:Lg5/w8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg5/w8;->H(Lg5/w8;Lg5/g3;)V

    iget-object v0, p0, Lg5/u8;->a:Lg5/v8;

    iget-object v0, v0, Lg5/v8;->d:Lg5/w8;

    invoke-static {v0}, Lg5/w8;->I(Lg5/w8;)V

    return-void
.end method
