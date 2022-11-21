.class public final synthetic Lb5/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/a6;


# instance fields
.field public final synthetic a:Lb5/x5;


# direct methods
.method public synthetic constructor <init>(Lb5/x5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/u5;->a:Lb5/x5;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb5/u5;->a:Lb5/x5;

    invoke-virtual {v0}, Lb5/x5;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
