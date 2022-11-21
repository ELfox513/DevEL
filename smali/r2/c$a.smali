.class public final Lr2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lr2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr2/c;

    invoke-direct {v0}, Lr2/c;-><init>()V

    sput-object v0, Lr2/c$a;->a:Lr2/c;

    return-void
.end method

.method public static synthetic a()Lr2/c;
    .locals 1

    sget-object v0, Lr2/c$a;->a:Lr2/c;

    return-object v0
.end method
