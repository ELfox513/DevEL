.class public final synthetic Lg5/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/y2;


# static fields
.field public static final synthetic a:Lg5/y0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg5/y0;

    invoke-direct {v0}, Lg5/y0;-><init>()V

    sput-object v0, Lg5/y0;->a:Lg5/y0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lg5/c3;->a:Ljava/util/List;

    invoke-static {}, Lb5/mc;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
