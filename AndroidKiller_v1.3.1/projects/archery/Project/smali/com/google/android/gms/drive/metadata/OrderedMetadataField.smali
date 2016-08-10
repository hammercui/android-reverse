.class public abstract Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
.super Lcom/google/android/gms/drive/metadata/MetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Lcom/google/android/gms/drive/metadata/MetadataField",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "versionAdded"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/drive/metadata/OrderedMetadataField;, "Lcom/google/android/gms/drive/metadata/OrderedMetadataField<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/MetadataField;-><init>(Ljava/lang/String;I)V

    return-void
.end method
